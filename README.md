# Rails Tutorial

use

- [typescript-rails](https://github.com/typescript-ruby/typescript-rails)
- [slim](https://github.com/slim-template/slim-rails)


## setup

### TypeScript

```
% npm install -g typescript
```

#### tsd

```
% npm install -g tsd
```

search

```
% tsd query jquery -i
```

get *.d.ts in `app/assets/typings`

```
% cd app/assets/
% tsd query jquery -a -s install
```

## Test

auto Test

```
% guard
```
