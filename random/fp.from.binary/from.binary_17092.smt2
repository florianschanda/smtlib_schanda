(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b11111010 #b00101111111011010101000)))
;; x should be Float32(0x7D17F6A8 [Rational(12624633739720954867857786958596014080), 12624633739720954867857786958596014080.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b01111101000101111111011010101000

(assert (not (= y #b01111101000101111111011010101000)))
(check-sat)
(exit)
