(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10010111010011000010111)))
;; x should be Float32(0x4ACBA617 [Rational(13346327, 2), 6673163.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00000000000000000000000)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xEA36CA15)))
;; z should be Float32(0xEA36CA15 [Rational(-55244701145256931507568640), -55244701145256931507568640.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b1 #b11010100 #b01101101100101000010101))))
(check-sat)
(exit)
