(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 267626214897236774083119516669591075201) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11001001010101101110111100100010010100001011100010001001000001100110101111101011111000101011010001001100111000101011100110000001))
;; x should be 267626214897236774083119516669591075201
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b11111110 #b10010010101011011101111))))
(check-sat)
(exit)
