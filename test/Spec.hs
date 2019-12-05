import Test.Tasty
import qualified Problem0001Spec
import qualified Problem0002Spec

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests"
    [
        Problem0001Spec.tests
        , Problem0002Spec.tests
    ]
