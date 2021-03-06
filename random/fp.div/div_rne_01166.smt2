(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80000001)))
;; x should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x16C29EE3)))
;; y should be Float32(0x16C29EE3 [Rational(12754659, 40564819207303340847894502572032), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (not (= result (fp #b1 #b00111011 #b01010000101111001011010))))
(check-sat)
(exit)
