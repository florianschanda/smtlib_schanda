(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0111100000110011010100101011110100110010111110000110110011000000))
;; x should be 8661357480921033920

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10111101 #b11100000110011010100110))))
(check-sat)
(exit)
