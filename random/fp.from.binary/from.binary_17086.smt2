(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b10101000 #b01111010000100101000111)))
;; x should be Float32(0x543D0947 [Rational(3247617867776), 3247617867776.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b01010100001111010000100101000111

(assert (not (= y #b01010100001111010000100101000111)))
(check-sat)
(exit)
