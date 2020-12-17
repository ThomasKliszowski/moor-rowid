# -----
# i18n

STRINGS_FILE=lib/i18n/strings.dart
OUTPUT_DIR=lib/i18n/messages

extract_arb:
	@flutter pub run intl_translation:extract_to_arb \
		--output-dir=$(OUTPUT_DIR) \
		$(STRINGS_FILE)

generate_from_arb:
	@flutter pub run intl_translation:generate_from_arb \
		--output-dir=$(OUTPUT_DIR) \
		--no-use-deferred-loading $(STRINGS_FILE) \
		$(OUTPUT_DIR)/intl_*.arb
	@flutter format $(OUTPUT_DIR)

# -----
# moor

SCHEMA_VERSION=$(shell grep -oEi 'int get schemaVersion => \d+' lib/database.dart | grep -oEi '\d+')

dump_moor_schema:
	@flutter pub run moor_generator schema dump \
		lib/database.dart \
		moor_schemas/moor_schema_v$(SCHEMA_VERSION).json

generate_moor_tests:
	@flutter pub run moor_generator schema generate \
		moor_schemas/ \
		test/generated/
