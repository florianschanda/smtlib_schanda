(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b11000001110001111100100)))
;; x should be Float32(0x49E0E3E4 [Rational(3684601, 2), 1842300.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A6EC022)))
;; y should be Float32(0x4A6EC022 [Rational(7823377, 2), 3911688.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x007FFFFF)))
;; z should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b0 #b10101001 #b10100011011110010100111))))
(check-sat)
(exit)
