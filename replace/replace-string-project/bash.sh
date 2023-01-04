#!/bin/bash

find . -type f | xargs sed -i 's/gitlab.falabella.com/gitlab.falabella.tech/g'
