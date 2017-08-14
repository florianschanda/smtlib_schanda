(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+subnormal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0077795C)))
;; x should be Float32(0x0077795C [Rational(1957463, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0x3F80DDE5700000000000000000000000 [Rational(1957463, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111110000000 #b1101110111100101011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
