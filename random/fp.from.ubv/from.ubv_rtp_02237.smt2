(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 170985106325070380211793302356733638766) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10000000101000101000100010011100000101000001100001001000101010010110110101101111001010110111100011001111100000101011100001101110))
;; x should be 170985106325070380211793302356733638766
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.geq r ((_ to_fp 11 53) #x47E014511382830A)))
(check-sat)
(exit)
