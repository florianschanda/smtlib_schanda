(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; on high bound (exclusive)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010001 #b01101000110001001110000)))
;; x should be Float32(0x48B46270 [Rational(738855, 2), 369427.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 11821681.0 32.0))))
;; w should be Float32(0x48B46271 [Rational(11821681, 32), 369427.531250])

(assert (distinct x w))
(check-sat)
(exit)
