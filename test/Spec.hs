import Test.Tasty
import qualified Problem0001Spec
import qualified Problem0002Spec
import qualified Problem0003Spec
import qualified Problem0004Spec
import qualified Problem0005Spec
import qualified Problem0006Spec
import qualified Problem0007Spec

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "All unit tests"
    [
        Problem0001Spec.tests
        , Problem0002Spec.tests
        , Problem0003Spec.tests
        , Problem0004Spec.tests
        , Problem0005Spec.tests
        , Problem0006Spec.tests
        , Problem0007Spec.tests
    ]
