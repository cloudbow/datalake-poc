```python
from dagster import pipeline, solid

@solid
def hello_world(context):
    context.log.info("Hello, Dagster!")

@pipeline
def hello_world_pipeline():
    hello_world()

def run():
    from dagster import execute_pipeline

    result = execute_pipeline(hello_world_pipeline)
    assert result.success

if __name__ == '__main__':
    run()
```