(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11100010 #b11110000010010101010100)))
;; x should be Float32(0x71782554 [Rational(1228758549916862069974524493824), 1228758549916862069974524493824.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010011 #b01011110111110011000111)))
;; y should be Float32(0xC9AF7CC7 [Rational(-11500743, 8), -1437592.875000])

(declare-const result Float32)
(assert (= result (fp.mul RTZ x y)))
(assert (not (= result (fp #b1 #b11110111 #b01010100001101001110111))))
(check-sat)
(exit)
