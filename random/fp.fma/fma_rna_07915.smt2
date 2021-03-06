(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b00000000000000000000000)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10110100011000000111110)))
;; y should be Float32(0x805A303E [Rational(-2955295, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xC98136B4)))
;; z should be Float32(0xC98136B4 [Rational(-2117037, 2), -1058518.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (_ -oo 8 24))))
(check-sat)
(exit)
