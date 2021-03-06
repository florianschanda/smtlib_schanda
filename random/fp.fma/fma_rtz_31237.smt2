(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01111100011101101100111)))
;; x should be Float32(0xCABE3B67 [Rational(-12467047, 2), -6233523.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b01100111011111011010111)))
;; y should be Float32(0xCAB3BED7 [Rational(-11779799, 2), -5889899.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00000000)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x56059158))))
(check-sat)
(exit)
