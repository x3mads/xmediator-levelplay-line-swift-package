# XMediatorLevelPlayLineAdapterCompatibility

Swift Package Manager package, published by X3M, that lets XMediator
integrations use the LevelPlay `LineAdapter` adapter together with
the Google Mobile Ads mediation adapter for the same network.

## Why this package exists

The official LevelPlay adapter package (<https://github.com/ironsource-mobile/LevelPlay-Line-Adapter-Swift-Package.git>) and the Google
mediation adapter package both declare a target named `LineAdapter`,
so SwiftPM cannot build a project that includes both. This package depends on
the official LevelPlay package and exposes it under a different product name,
`LevelPlayLineAdapter`, renaming the conflicting module so both adapters can
coexist.

## Usage

Add this repository as a package dependency and select the
`LevelPlayLineAdapter` product instead of LevelPlay's `LineAdapter`.
Versions match the LevelPlay adapter versions one-to-one: version
`5.6.0` of this package uses LevelPlay adapter `5.6.0`.

## License

Apache License 2.0 (see `LICENSE`).
