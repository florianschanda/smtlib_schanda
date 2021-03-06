(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b0100000001011100000001000001111100011010011100011000101011110010))
;; x should be 4637586247918914290

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTP x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x5E80B809))))
(check-sat)
(exit)
