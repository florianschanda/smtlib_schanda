(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01100001011101110000011)))
;; x should be Float32(0x4AB0BB83 [Rational(11582339, 2), 5791169.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x807FFFFF)))
;; y should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (not (= result ((_ to_fp 8 24) #x4AB0BB83))))
(check-sat)
(exit)
