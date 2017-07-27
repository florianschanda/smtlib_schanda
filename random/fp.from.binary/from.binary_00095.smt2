(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10000000010110101100111100100100))
;; x should be 805acf24

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x805ACF24 [Rational(-1487817, 178405961588244985132285746181186892047843328), -0.000000])

(assert (not (= y (fp #b1 #b00000000 #b10110101100111100100100))))
(check-sat)
(exit)
