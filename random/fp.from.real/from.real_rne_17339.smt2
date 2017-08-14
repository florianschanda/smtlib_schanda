(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 149657771111725336014795720514625843660407727383603741.0 12731474852090538039177785552558613506571677460412101566475877808464883123520854413646233600.0))))
;; w should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(assert (= x w))
(check-sat)
(exit)
