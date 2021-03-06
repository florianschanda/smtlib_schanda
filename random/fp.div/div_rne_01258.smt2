(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11101001111001111001001)))
;; x should be Float32(0x8074F3C9 [Rational(-7664585, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b01101001 #b01100010010001011001000)))
;; y should be Float32(0xB4B122C8 [Rational(-1451097, 4398046511104), -0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (not (= result ((_ to_fp 8 24) #x0B290587))))
(check-sat)
(exit)
