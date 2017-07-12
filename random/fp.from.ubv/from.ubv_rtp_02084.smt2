(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 109366705113117928653047775263713533089) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01010010010001110100001011011111111100011111011100111011011010100010011000100100000010001001010110100001110001100001110010100001))
;; x should be 109366705113117928653047775263713533089
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r (_ +oo 5 11))))
(check-sat)
(exit)
