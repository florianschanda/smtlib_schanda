(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01110000010101010001111110001101))
;; x should be 70551f8d

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x70551F8D [Rational(263833798584114551051077550080), 263833798584114551051077550080.000000])

(assert (not (= y (fp #b0 #b11100000 #b10101010001111110001101))))
(check-sat)
(exit)
