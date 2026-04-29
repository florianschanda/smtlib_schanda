(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10101000010001100000011001101011))
;; x should be a846066b

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xA846066B [Rational(-12977771, 1180591620717411303424), -0.000000])

(assert (not (= y (fp #b1 #b01010000 #b10001100000011001101011))))
(check-sat)
(exit)
