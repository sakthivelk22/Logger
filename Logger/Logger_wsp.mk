.PHONY: clean All

All:
	@echo "----------Building project:[ Logger - Debug ]----------"
	@$(MAKE) -f  "Logger.mk"
clean:
	@echo "----------Cleaning project:[ Logger - Debug ]----------"
	@$(MAKE) -f  "Logger.mk" clean
