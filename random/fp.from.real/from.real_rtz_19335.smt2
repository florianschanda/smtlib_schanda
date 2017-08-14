(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10001001 #b11110111001111110000101)))
;; x should be Float32(0x44FB9F85 [Rational(16490373, 8192), 2012.984985])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 1688614211559.0 838860800.0))))
;; w should be Float32(0x44FB9F85 [Rational(16490373, 8192), 2012.984985])

(assert (= x w))
(check-sat)
(exit)
