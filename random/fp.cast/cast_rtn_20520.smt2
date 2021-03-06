(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AE859F3)))
;; x should be Float32(0x4AE859F3 [Rational(15227379, 2), 7613689.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x415D0B3E60000000 [Rational(15227379, 2), 7613689.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010101 #b1101000010110011111001100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
