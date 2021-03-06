(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000001)))
;; x should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A739BB2)))
;; y should be Float32(0x4A739BB2 [Rational(7982553, 2), 3991276.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b01010101001000110110011)))
;; z should be Float32(0x002A91B3 [Rational(2789811, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b0 #b00000000 #b11001110111100010100000))))
(check-sat)
(exit)
