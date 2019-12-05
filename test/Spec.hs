import Test.Tasty
import qualified Problem0001Spec

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests"
    [
        Problem0001Spec.tests
    ]
