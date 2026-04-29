(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10011010100010110000101)))
;; x should be Float32(0x4ACD4585 [Rational(13452677, 2), 6726338.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 6726339

(declare-const z Int)
(assert (= z 6726339))
(assert (= y z))
