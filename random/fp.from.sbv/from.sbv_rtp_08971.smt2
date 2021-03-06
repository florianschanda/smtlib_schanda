(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b01101101100000000110110100100100100101101111110100111100111101000000010001010011000111010111010100010100101101000100001010100101))
;; x should be 145552679220037834177429649560345789093

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTP x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x47DB601B4925BF50))))
(check-sat)
(exit)
