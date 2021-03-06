(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807FFFFF)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b01101011 #b10011001000110010010101)))
;; y should be Float32(0x35CC8C95 [Rational(13405333, 8796093022208), 0.000002])

(declare-const result Float32)
(assert (= result (fp.mul RNE x y)))
(assert (not (= result (fp #b1 #b00000000 #b00000000000000000001101))))
(check-sat)
(exit)
