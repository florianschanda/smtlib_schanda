(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-subnormal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x801EAC27)))
;; x should be Float32(0x801EAC27 [Rational(-2010151, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNA x)))
;; y should be Float16(-zero)

(declare-const z Float16)
(assert (= z (fp #b1 #b00000 #b0000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
