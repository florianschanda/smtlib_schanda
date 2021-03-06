(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCD111656)))
;; x should be Float32(0xCD111656 [Rational(-152135008), -152135008.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010011 #b10111000001000110000100)))
;; y should be Float32(0x49DC1184 [Rational(3605601, 2), 1802800.500000])

(declare-const result Float32)
(assert (= result (fp.mul RTN x y)))
(assert (= result ((_ to_fp 8 24) #xD779723F)))
(check-sat)
(exit)
