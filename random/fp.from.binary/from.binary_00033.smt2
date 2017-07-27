(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00101000100001011111001111000000))
;; x should be 2885f3c0

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x2885F3C0 [Rational(137167, 9223372036854775808), 0.000000])

(assert (not (= y (fp #b0 #b01010001 #b00001011111001111000000))))
(check-sat)
(exit)
