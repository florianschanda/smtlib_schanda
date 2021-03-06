(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10111110 #b00001111000110101010010)))
;; x should be Float32(0x5F078D52 [Rational(9767553326789951488), 9767553326789951488.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00800000)))
;; y should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010010 #b01011011100111111111000)))
;; z should be Float32(0xC92DCFF8 [Rational(-1423871, 2), -711935.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #xC92DCFF7))))
(check-sat)
(exit)
