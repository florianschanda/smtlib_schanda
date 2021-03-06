(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000000000000000000001)))
;; x should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00101011 #b01100001100010010001101)))
;; y should be Float32(0x95B0C48D [Rational(-11584653, 162259276829213363391578010288128), -0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (not (= result ((_ to_fp 8 24) #x1EB95F87))))
(check-sat)
(exit)
