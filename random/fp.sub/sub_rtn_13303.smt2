(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11111011101000000000100)))
;; x should be Float32(0x007DD004 [Rational(2061313, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC960D223)))
;; y should be Float32(0xC960D223 [Rational(-14733859, 16), -920866.187500])

(declare-const result Float32)
(assert (= result (fp.sub RTN x y)))
(assert (= result ((_ to_fp 8 24) #x4960D223)))
(check-sat)
(exit)
