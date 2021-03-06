(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvule x #b01001010010001000010101001110000))
;; x should be 1245981296

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.leq r ((_ to_fp 11 53) #x41D2910A9C000000)))
(check-sat)
(exit)
