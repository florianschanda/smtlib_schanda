(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10011010 #b11010001111010010111001)))
;; x should be Float32(0x4D68F4B9 [Rational(244272016), 244272016.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b01000010011111001001111)))
;; y should be Float32(0x4AA13E4F [Rational(10567247, 2), 5283623.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111111 #b00101110100110011100010)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
