(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ +zero 8 24)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000000)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b10010110011110100101001)))
;; z should be Float32(0x4ACB3D29 [Rational(13319465, 2), 6659732.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b0 #b10010101 #b10010110011110100101001))))
(check-sat)
(exit)
