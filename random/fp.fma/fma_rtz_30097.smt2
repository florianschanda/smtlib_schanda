(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10101000 #b11110111011101101101111)))
;; x should be Float32(0x547BBB6F [Rational(4324725620736), 4324725620736.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x46E8DD54)))
;; y should be Float32(0x46E8DD54 [Rational(3815253, 128), 29806.664062])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b00000000000000000000000)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x5BE4FB80))))
(check-sat)
(exit)
