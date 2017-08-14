(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00110000010110100111101101110001))
;; x should be 305a7b71

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x305A7B71 [Rational(14318449, 18014398509481984), 0.000000])

(assert (not (= y (fp #b0 #b01100000 #b10110100111101101110001))))
(check-sat)
(exit)
