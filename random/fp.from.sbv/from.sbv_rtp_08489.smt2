(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsge x #b1110000001000110001100111010110100100011010110001111110000010001))
;; x should be -2286082942128554991

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTP x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #xC3BFB9CC52DCA703))))
(check-sat)
(exit)
