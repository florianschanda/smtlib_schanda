(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x002B476C)))
;; x should be Float32(0x002B476C [Rational(709083, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x1780CE54)))
;; y should be Float32(0x1780CE54 [Rational(2110357, 2535301200456458802993406410752), 0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTN x y)))
(assert (not (= result (fp #b0 #b00101111 #b00000001100111001010100))))
(check-sat)
(exit)
