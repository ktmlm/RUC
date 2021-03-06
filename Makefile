all: build

build:
	cargo build

lint:
	cargo clippy
	cargo clippy --tests

release:
	cargo build --release

test:
	cargo test -- --nocapture --test-threads=1
	cargo test --no-default-features=false -- --nocapture --test-threads=1

fmt:
	@ cargo fmt

doc:
	cargo doc --open

clean:
	@ cargo clean
