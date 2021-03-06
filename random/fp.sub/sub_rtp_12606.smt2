(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11101011 #b01000010000111100011110)))
;; x should be Float32(0x75A10F1E [Rational(408333206646990942958934044966912), 408333206646990942958934044966912.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFF800000)))
;; y should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.sub RTP x y)))
(assert (not (= result (_ +oo 8 24))))
(check-sat)
(exit)
