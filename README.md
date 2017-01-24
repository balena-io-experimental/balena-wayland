# resin-wayland
A wayland + weston + Mali DRM boilerplate

## Configure via [environment variables](https://docs.resin.io/management/env-vars/)
Variable Name | Value | Description | Device-specific
------------ | ------------- | ------------- | -------------
**`XDG_RUNTIME_DIR`** | `/run/shm/wayland` |  |
**`DEMO_MODE`** | `standalone` | if set to `standalone` fires upp full-screen glmark2 demo in a loop, if set to `desktop` starts a wayland-weston session on the screen with a terminal pre-installed. |

## Mali DDK Installation

1. Unzip `mali_ddk_7.0-0_v0.21.zip`
2. Copy `ddk/opengl-es-mali-utgard-7.0-0.armv7hl.rpm` to `<PROJECT>/Dockerbin/mali/ddk/`
3. Extract `test/glmark2.tar.gz` and move the contents in <PROJECT>/Dockerbin/mali/test/
4. `git add` the new files
5. commit and `git push resin master`

## License

Copyright 2017 Resinio Ltd.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
