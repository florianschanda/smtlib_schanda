(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvule x #b11101010110110111000000001110011))
;; x should be 3940253811

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r (fp #b0 #b10000011110 #b1101010110110111000000001110011000000000000000000000)))
(check-sat)
(exit)
