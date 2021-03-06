(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000000000000000000000)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCABC447F)))
;; y should be Float32(0xCABC447F [Rational(-12338303, 2), -6169151.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x001CEB0B)))
;; z should be Float32(0x001CEB0B [Rational(1895179, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b0 #b00000000 #b00111001110101100001011))))
(check-sat)
(exit)
