(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0AD7921C)))
;; x should be Float32(0x0AD7921C [Rational(3531911, 170141183460469231731687303715884105728), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 3618263369.0 1701411834604692317316873037158841057280000.0))))
;; w should be Float32(0x0930AC4A [Rational(5789221, 2722258935367507707706996859454145691648), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
