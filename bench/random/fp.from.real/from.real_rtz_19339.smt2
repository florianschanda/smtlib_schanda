(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10001001 #b11110111001111110000101)))
;; x should be Float32(0x44FB9F85 [Rational(16490373, 8192), 2012.984985])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 82451874857.0 40960000.0))))
;; w should be Float32(0x44FB9F86 [Rational(8245187, 4096), 2012.985107])

(assert (distinct x w))
(check-sat)
(exit)
