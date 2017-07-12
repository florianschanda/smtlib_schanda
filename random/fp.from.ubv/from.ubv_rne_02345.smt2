(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 323901879952054772865848639317371502322) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11110011101011010011101110100011100011000101100111100110101101110011010110101000011101100000010011100111101111111011111011110010))
;; x should be 323901879952054772865848639317371502322
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x7F73AD3C))))
(check-sat)
(exit)
