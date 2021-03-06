(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x52449F35)))
;; x should be Float32(0x52449F35 [Rational(211121160192), 211121160192.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b11010111101111101010010)))
;; y should be Float32(0x006BDF52 [Rational(3534761, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x821F099D)))
;; z should be Float32(0x821F099D [Rational(-10422685, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b0 #b00100110 #b01001011011010000100010))))
(check-sat)
(exit)
