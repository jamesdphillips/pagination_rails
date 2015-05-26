# Pagination Rails

Pagination Rails is a gem that allows simple pagination for your api's resource endpoint responses.

## Table of Contents

* [Installation](#installation)
* [Usage](#usage)
  * [Cursor Pagination](#cursor-pagination)
  * [Offset Pagination](#offset-pagination)

## Installation

Put this in your Gemfile:

`gem 'pagination_rails'`

Run the installation generator with

`rails generate pagination_rails:install`

This will copy over the pagination services and the controller concern response helper.

## Usage

You can now add easy pagination to your api endpoint responses.

### Cursor Pagination

The cursor specifies the id of a particular resource you would like to fetch the count number of resources after.

Add the query params to your controller:

```
def query_params
  validate_range!(:count, 1..100)
  query_params = params.permit(:cursor, :count)
  query_params
end
```

Use in your endpoint method, similar to:

```
def index
  ...
  @page = Pagination::Query.new(@resource_scope).fetch(query_params)

  respond_with_page @page
end
```

### Offset Pagination

The offset specifies the number of resources to fetch the count number of resources after.

Add the query params to your controller:

```
def query_params
  validate_range!(:count, 1...100)
  query_params = params.permit(:count, :offset)
  query_params
end
```

Use in your endpoint method, similar to:

```
def index
  ...
  respond_with_page @page = OffsetPagination::Page.new(@resource_scope, query_params)
end
```
