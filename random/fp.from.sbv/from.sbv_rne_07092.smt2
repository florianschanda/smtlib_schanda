(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b01011111011100010110011000011010))
;; x should be 1601267226

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10011101 #b01111101110001011001100))))
(check-sat)
(exit)
